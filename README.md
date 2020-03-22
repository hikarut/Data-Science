# Data-Science for JupyterLab
※`dc` = `docker-compose`

* ビルド
```
$ dc up -d --build
```

* 起動
```
$ dc exec data-science bash

# jupyter lab --port 10000 --allow-root
```

* 起動
```
$ dc exec data-science bash -c "jupyter lab --port 10000 --allow-root"
```

# 統計的データ分析
* [ビジネスで使えるPythonを使った統計的データ分析手法まとめ](https://qiita.com/hikarut/items/21c19edf98c85ec3c3ab)
