#プルリクエストによる開発を行う
参考: http://www.backlog.jp/git-guide/pull-request/pull-request1_3.html


## gitのワークフロー(未完成

branch_nameは、「述語_名詞」ぐらいにすれば良い。

下記のbranch_nameとfilenameは便宜置き換えてください。

* git branchでmasterに*が付いているかを確認。いなければ、git checkout master
* git pull origin master
* git checkout -b branch_nameでブランチを作成して移動
* git add filename    を実行。ここでもfileは変更したファイル名
* git commit -m "何をしたか、なぜしたか"
* 上のaddとcommitを小刻みに繰り返す。
* git push origin branch_name
