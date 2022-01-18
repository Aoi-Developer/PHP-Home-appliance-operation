<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<?php
if (isset($_POST['add'])) {
    echo "エアコンの操作命令を送信しました";
    $output = Shell_exec("/var/www/html/get/eacon/1.sh");
} elseif (isset($_POST['remove'])) {
    echo "LED電球の操作命令を送信しました";
    $output = Shell_exec("/var/www/html/get/lite/1.sh");
}
?>
<?php
if (isset($_POST['kay'])) {
    echo "鍵の操作命令を送信しました";
    $output = Shell_exec("/home/key/open/1.sh");
} elseif (isset($_POST['koy'])) {
    echo "エアコンの設定を変更しました";
    $output = Shell_exec("/var/www/html/get/eacon/2.sh");
}
?>
<center><font size=”+6”>
<form action="test.php" method="post">
    <input type="submit" name="add" value="エアコン" style="width:300px;height:300px" />
    <input type="submit" name="remove" value="ライト" style="width:300px;height:300px" />
    <input type="submit" name="koy" value="冷房・暖房" style="width:300px;height:300px" />
</form>
</size>
<br><br><br><br><h1><a href="../index.html">ステータスを確認</a></h1>
</center>
<center>
<text>明りは<text><font size="5" color="#0000ff">
点灯
</font>です。<br>
<text>エアコンは<text><font size="5" color="#0000ff">
切断</font>です。<br>
<text>エアコンは<text><font size="5" color="#0000ff">
暖房設定
</font>です。<br>
</center>
