errors = []
node.file_mirror.files.each do |group, files|
  files.each do |f, attrs|
    attrs.require.each do |required, error_msg|
      errors.push(<<-MSG
node.file_mirror.files.#{group}.#{f}.#{required} not set:
#{error_msg}
MSG
) unless attrs.has_key?(required)
    end if attrs.has_key?(:require)
  end
end
raise errors.join("\n\n") if 0 < errors.length

directory node.file_mirror.data_dir do
  owner node.file_mirror.user
  group node.file_mirror.user
  mode "0755"
  recursive true
end

template "#{node.file_mirror.data_dir}/file-mirror.sh" do
  source "file-mirror.sh.erb"
  owner node.file_mirror.user
  group node.file_mirror.user
  mode "0755"
end

mirror "files" do
  target node.file_mirror.data_dir
  user node.file_mirror.user
  hostname node.file_mirror.apache.listen_hostname
  port node.file_mirror.apache.listen_port
  cwd node.file_mirror.data_dir
  command "#{node.file_mirror.data_dir}/file-mirror.sh"
  cookbook "mirror-core"
end
