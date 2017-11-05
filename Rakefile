def my_symlink (src_parts, dst_parts)
  destination = File.join(File.expand_path('~'), dst_parts)
  source = File.join(Dir.pwd(), src_parts)

  if File.exists?(destination) || File.symlink?(destination)
    puts "Symlink #{destination} exist!"
  else
    puts "Making symlink #{source} -> #{destination}"
    File.symlink(source, destination)
  end
end

task :init_submodules do
  system('git submodule init')
  system('git submodule update')
end

task :vim => :init_submodules do
  my_symlink('vim', ['.config', 'nvim'])
end

task :git do
  %w(gitconfig globalignore bash_aliases).each { |f|
    my_symlink(f, ".#{f}")
  }
end

task :default => [:vim, :git]

