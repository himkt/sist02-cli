# Sist02::Cli

大学のレポート、参考文献を書かなければいけない...  

そんなとき、SIST02を自動的に出力するツールがあったら便利なのでは?  

sist02-cliは、文献情報を自動的にSIST02形式にして出力するサービスです。  


## Installation

インストールは簡単です。  

Rubyがインストールされていることが条件です。  

ターミナルを開いて、  

```ruby
gem install sist02-cli
```

と入力してsist02-cliをインストールします。  

インストールが完了したらターミナルを再起動してください。  

ターミナルで

```shell
sist02
```

と入力して

```shell
Commands:
  sist02 cinii_articles NAID  # get cinii articles bibliography
  sist02 cinii_books NAID     # get cinii books bibliography
  sist02 help [COMMAND]       # Describe available commands or one specific command
```

と出力されればインストール成功です。インストールに失敗した場合はお手数ですが[松之木](https://twitter.com/himkt)までご連絡ください。

## Usage

現在はCiNii articles(論文)とCiNii books(図書)に対応しています。  

### CiNii articles

例えば[こちらの論文](http://ci.nii.ac.jp/naid/40020423125)を引用したいとします。  

この論文のNAIDは40020423125です。  

従って、ターミナルに

```shell
sist02 cinii_articles 40020423125
```

と入力してください。  

```shell
森田 倫子. 食料自給率と新たな指標 : 平成19年以降の動向と食料自給力の指標化. 調査と情報. 2015, vol. , no. 864, p. 巻頭1p,1-14.
```

と出力されれば成功です。


### CiNii books

例えば[こちらの図書](http://ci.nii.ac.jp/ncid/BB18507477)を引用したいとします。  

この論文のNCIDはBB18507477です。  

従って、ターミナルに

```shell
sist02 cinii_books BB18507477
```

と入力してください。  

```shell
まちライブラリー, マイクロ・ライブラリーサミット実行委員会, 礒井純充. マイクロ・ライブラリー : 人とまちをつなぐ小さな図書館. 学芸出版社, 2015, 238p.
```

と出力されれば成功です。


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sist02-cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
