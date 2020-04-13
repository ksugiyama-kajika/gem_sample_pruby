require_relative 'lib/gem_sample_pruby/version'

Gem::Specification.new do |spec|
  # gitコマンドからauthorsとemailが入力される
  spec.name          = "gem_sample_pruby"
  spec.version       = GemSamplePruby::VERSION
  spec.authors       = ["ksugiyama"]
  spec.email         = ["sugiyama.30n@gmail.com"]

  # TODOの記載は削除しなければ、gemパッケージとしてbuildする際にエラーが発生する
  # description, summaryはgemパッケージについての説明
  # summaryはgem list -d などで表示されるdescriptionの要約
  spec.summary       = %q{gem_sample}
  # descriptionには詳細な説明を記述
  # rubygems.orgのgemパッケージのページに表示される
  spec.description   = %q{my_first_gem}

  # homepageは関連ページのURL
  spec.homepage      = "https://github.com/ksugiyama-kajika/gem_sample_pruby"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # gemパッケージに含む対象となるファイルリストを表している
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  # excutablesはgemパッケージに含まれる実行可能コマンドとしてのファイルのリストを表している。
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
