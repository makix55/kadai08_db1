<?php
require_once('funcs.php');

//1. DB接続
try {
  $pdo = new PDO('mysql:dbname=gs_db_class;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
  exit('DBConnectError: ' . $e->getMessage());
}

//2. データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table;");
$status = $stmt->execute();

//3. データ表示
$view = "";
if ($status === false) {
  $error = $stmt->errorInfo();
  exit("ErrorQuery: " . $error[2]);
} else {
  // テーブルのヘッダー
  $view .= '<table class="styled-table">';
  $view .= '<thead><tr>';
  $view .= '<th>学校名</th><th>郵便番号</th><th>所在地</th><th>最寄駅・バス停</th>';
  $view .= '<th>Email</th><th>電話番号</th><th>FAX番号</th><th>担当の先生名</th>';
  $view .= '<th>授業希望日</th><th>希望の講師</th><th>その他ご要望</th><th>登録日</th>';
  $view .= '</tr></thead>';
  $view .= '<tbody>';

  // 各データ行を追加
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $view .= '<tr>';
    $view .= '<td>' . h($result['name']) . '</td>';
    $view .= '<td>' . h($result['code']) . '</td>';
    $view .= '<td>' . h($result['address']) . '</td>';
    $view .= '<td>' . h($result['station']) . '</td>';
    $view .= '<td>' . h($result['email']) . '</td>';
    $view .= '<td>' . h($result['tel']) . '</td>';
    $view .= '<td>' . h($result['fax']) . '</td>';
    $view .= '<td>' . h($result['teacher']) . '</td>';
    $view .= '<td>' . h($result['schedule']) . '</td>';
    $view .= '<td>' . h($result['soroteacher']) . '</td>';
    $view .= '<td>' . h($result['content']) . '</td>';
    $view .= '<td>' . h($result['date']) . '</td>';
    $view .= '</tr>';
  }

  $view .= '</tbody>';
  $view .= '</table>';
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>申込データ一覧</title>
  <link rel="stylesheet" href="css/style2.css">
</head>

<body id="main">
  <!-- Head[Start] -->
  <header>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="index.php">データ登録</a>
        </div>
      </div>
    </nav>
  </header>
  <!-- Head[End] -->

  <!-- Main[Start] -->
  <div>
    <div class="container"><?= $view ?></div>
  </div>
  <!-- Main[End] -->

</body>

</html>