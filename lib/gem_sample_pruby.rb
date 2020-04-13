require "gem_sample_pruby/version"

# gemパッケージは、パッケージ名と同名のファイルをrequire することで利用する
# この場合、lib
module GemSamplePruby
  class Error < StandardError; end
  # Your code goes here...
  def self.hello_pruby
    p "hello pruby!!"
  end
end
