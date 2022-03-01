
# embulk
データセット毎にembulkを利用してSPARQLで取得し、elasticsearchに投入する

## datasets- indecies
* NCBI taxonomy - taxonomy
* BioSample - biosample
* ChEBI compound - chebi
* PubChem compound - pubchem
* NCBI gene - gene

## 手順
```
embulk preview ncbi_taxonomy.yml
embulk run ncbi_taxonomy.yml
```

## 課題など

* 外部参照しているSPARQL epは、リバースプロキシしているnginxのhttps設定やTimeout設定に課題がある。microbedb.jpのホストからvirtuosoコンテナに http://localhost:8890/sparql で接続することで正常に動作した。

```
Error: HttpException: -1 Unexpected error making the query: javax.net.ssl.SSLHandshakeException: sun.security.validator.ValidatorException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
```

* MicrobeDB.jpでBioSample、MBGDの全件取得の際は、LIMIT/OFFSETやISQL経由で生成しているが、embulk-input-sparqlでBioSample全件stdoutは確認した。

```
%time embulk run biosample.yml
2022-03-01 23:28:56.627 +0900: Embulk v0.9.23
2022-03-01 23:28:57.284 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2022-03-01 23:28:58.940 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/tf/.embulk/lib/gems"
2022-03-01 23:28:59.393 +0900 [INFO] (main): Started Embulk v0.9.23
2022-03-01 23:28:59.474 +0900 [INFO] (0001:transaction): Loaded plugin embulk-input-sparql (0.0.2)
2022-03-01 23:28:59.492 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=32 / output tasks 16 = input tasks 1 * 16
2022-03-01 23:28:59.500 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
...（略）
SAMN05941771,Longman.30.IgA.Minus,http://purl.org/dc/terms/title,Longman.30.IgA.Minus
SAMN05941772,Longman.30.IgA.Plus,http://purl.org/dc/terms/title,Longman.30.IgA.Plus
SAMN05941773,Longman.30.IgG.Plus,http://purl.org/dc/terms/title,Longman.30.IgG.Plus
SAMN05941774,Longman.30.Pre.sort,http://purl.org/dc/terms/title,Longman.30.Pre.sort
SAMN05941775,Longman.4.IgA.Minus,http://purl.org/dc/terms/title,Longman.4.IgA.Minus
SAMN05941776,Longman.4.IgA.Plus,http://purl.org/dc/terms/title,Longman.4.IgA.Plus
2022-03-01 23:31:54.439 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2022-03-01 23:31:54.442 +0900 [INFO] (main): Committed.
2022-03-01 23:31:54.443 +0900 [INFO] (main): Next config diff: {"in":{},"out":{}}

real	2m58.653s
user	3m36.657s
sys	0m15.574s
```



