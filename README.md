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
  sist02 cinii_articles NAID       # get a cinii articles bibliography
  sist02 cinii_books NCID          # get a cinii books bibliography
  sist02 cinii_dissertations NAID  # get a doctoral dissertations bibliography
  sist02 help [COMMAND]            # Describe available commands or one speci...
```

と出力されればインストール成功です。インストールに失敗した場合はお手数ですが[松之木](https://twitter.com/himkt)までご連絡ください。

## Usage

現在はCiNii articles(論文)とCiNii books(図書)に対応しています。  

### CiNii articles

例えば[こちらの論文](http://ci.nii.ac.jp/naid/40020423125)を引用したいとします。  

この論文のNAIDは40020423125です。  

従って、ターミナルに

```shell
sist02 cinii_articles 110009886645
```

と入力してください。  

```shell
粟津 妙華, 高田 雅美, 城 和貴. 活字データの分類を用いた進化計算による近代書籍からのルビ除去. 情報処理学会論文誌. 数理モデル化と応用. 2015, vol. 8, no. 1, p. 72-79.
```

と出力されれば成功です。


### CiNii books

例えば[こちらの図書](http://ci.nii.ac.jp/ncid/BB18507477)を引用したいとします。  

この図書のNCIDはBB18507477です。  

従って、ターミナルに

```shell
sist02 cinii_books BB18507477
```

と入力してください。  

```shell
まちライブラリー, マイクロ・ライブラリーサミット実行委員会, 礒井純充. マイクロ・ライブラリー : 人とまちをつなぐ小さな図書館. 学芸出版社, 2015, 238p.
```

と出力されれば成功です。


### CiNii doctoral thesis

例えば[こちらの博士論文](http://ci.nii.ac.jp/naid/500000587337)を引用したいとします。  

この図書のNAIDは500000587337です。  

従って、ターミナルに

```shell
sist02 cinii_dissertations 500000587337
```

と入力してください。  

```shell
今井, 福司. 日本占領期におけるアメリカ学校図書館の導入 : 日米の学校教育実践における学校図書館の位置づけ. 東京大学, 2013, 博士論文.
```

と出力されれば成功です。


## Development

このツールは開発中です。不具合を発見したらお手数ですがissueを作成する、もしくは[松之木](https://twitter.com/himkt)までお知らせください。

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sist02-cli/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
