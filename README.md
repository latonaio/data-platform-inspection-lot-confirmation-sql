# data-platform-inspection-lot-confirmation-sql

data-platform-inspection-lot-confirmation-sql は、データ連携基盤において、品質検査ロット確認データを維持管理するSQLテーブルを作成するためのレポジトリです。 

## 前提条件  
data-platform-inspection-lot-confirmation-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sqlの設定ファイル

data-platform-inspection-lot-confirmation-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-inspection-lot-confirmation-sql-header-data.sql（データ連携基盤 品質検査ロット確認 - ヘッダデータ）
* data-platform-inspection-lot-confirmation-sql-header-doc-data.sql（データ連携基盤 品質検査ロット確認 - ヘッダ文書データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
