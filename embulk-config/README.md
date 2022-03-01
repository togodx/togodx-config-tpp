

```
%embulk preview ncbi_taxonomy.yml
2022-03-01 16:55:33.683 +0900: Embulk v0.9.23
2022-03-01 16:55:34.506 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2022-03-01 16:55:36.926 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/tf/.embulk/lib/gems"
2022-03-01 16:55:37.440 +0900 [INFO] (main): Started Embulk v0.9.23
2022-03-01 16:55:37.577 +0900 [INFO] (0001:preview): Loaded plugin embulk-input-sparql (0.0.2)
HttpException: 404 Not Found
	at org.apache.jena.sparql.engine.http.HttpQuery.rewrap(HttpQuery.java:382)
	at org.apache.jena.sparql.engine.http.HttpQuery.execGet(HttpQuery.java:341)
	at org.apache.jena.sparql.engine.http.HttpQuery.exec(HttpQuery.java:293)
	at org.apache.jena.sparql.engine.http.QueryEngineHTTP.execResultSetInner(QueryEngineHTTP.java:353)
	at org.apache.jena.sparql.engine.http.QueryEngineHTTP.execSelect(QueryEngineHTTP.java:346)
	at org.embulk.input.sparql.SparqlInputPlugin.run(SparqlInputPlugin.java:89)
	at org.embulk.exec.PreviewExecutor$2$1.run(PreviewExecutor.java:122)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:84)
	at org.embulk.spi.util.Filters.transaction(Filters.java:42)
	at org.embulk.exec.PreviewExecutor$2.run(PreviewExecutor.java:112)
	at org.embulk.input.sparql.SparqlInputPlugin.resume(SparqlInputPlugin.java:63)
	at org.embulk.input.sparql.SparqlInputPlugin.transaction(SparqlInputPlugin.java:55)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:110)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:98)
	at org.embulk.exec.PreviewExecutor.access$000(PreviewExecutor.java:28)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:65)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:62)
	at org.embulk.spi.Exec.doWith(Exec.java:22)
	at org.embulk.exec.PreviewExecutor.preview(PreviewExecutor.java:62)
	at org.embulk.EmbulkEmbed.preview(EmbulkEmbed.java:231)
	at org.embulk.EmbulkRunner.previewInternal(EmbulkRunner.java:214)
	at org.embulk.EmbulkRunner.preview(EmbulkRunner.java:106)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:428)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:90)
	at org.embulk.cli.Main.main(Main.java:64)

Error: Not Found
[火  3 01 16:56] tf@~/github/togodx-config-tpp/embulk-config
%embulk run ncbi_taxonomy.yml
2022-03-01 16:56:53.895 +0900: Embulk v0.9.23
2022-03-01 16:56:54.612 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2022-03-01 16:56:56.359 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/tf/.embulk/lib/gems"
2022-03-01 16:56:56.837 +0900 [INFO] (main): Started Embulk v0.9.23
2022-03-01 16:56:56.932 +0900 [INFO] (0001:transaction): Loaded plugin embulk-input-sparql (0.0.2)
2022-03-01 16:56:56.950 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=32 / output tasks 16 = input tasks 1 * 16
2022-03-01 16:56:56.959 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2022-03-01 16:57:57.661 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
org.embulk.exec.PartialExecutionException: HttpException: 404 Not Found
	at org.embulk.exec.BulkLoader$LoaderState.buildPartialExecuteException(BulkLoader.java:340)
	at org.embulk.exec.BulkLoader.doRun(BulkLoader.java:566)
	at org.embulk.exec.BulkLoader.access$000(BulkLoader.java:35)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:353)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:350)
	at org.embulk.spi.Exec.doWith(Exec.java:22)
	at org.embulk.exec.BulkLoader.run(BulkLoader.java:350)
	at org.embulk.EmbulkEmbed.run(EmbulkEmbed.java:242)
	at org.embulk.EmbulkRunner.runInternal(EmbulkRunner.java:291)
	at org.embulk.EmbulkRunner.run(EmbulkRunner.java:155)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:431)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:90)
	at org.embulk.cli.Main.main(Main.java:64)
Caused by: HttpException: 404 Not Found
	at org.apache.jena.sparql.engine.http.HttpQuery.rewrap(HttpQuery.java:382)
	at org.apache.jena.sparql.engine.http.HttpQuery.execGet(HttpQuery.java:341)
	at org.apache.jena.sparql.engine.http.HttpQuery.exec(HttpQuery.java:293)
	at org.apache.jena.sparql.engine.http.QueryEngineHTTP.execResultSetInner(QueryEngineHTTP.java:353)
	at org.apache.jena.sparql.engine.http.QueryEngineHTTP.execSelect(QueryEngineHTTP.java:346)
	at org.embulk.input.sparql.SparqlInputPlugin.run(SparqlInputPlugin.java:89)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.runInputTask(LocalExecutorPlugin.java:269)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.access$100(LocalExecutorPlugin.java:194)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:233)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:230)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)

Error: HttpException: 404 Not Found
```