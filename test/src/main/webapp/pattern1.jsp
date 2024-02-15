<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="pt.css" media="all"> 
<title>入力画面案1</title>
</head>
<body>
    <div class="blackboard-box">
        <br>
        <h1>「偉人図鑑」</h1>
        <p>「好きな偉人」や「知っている偉人」の名前を登録して、<br>自分だけの偉人図鑑を作っちゃおう!!</p><br><br>
        <h1>偉人の名前を入力してください</h1>
    
	<form action="./Insert" method="post" onsubmit="return validateForm()">
	<label>
	<input type="text" name="ijin" id="ijinInput" placeholder="例)豊臣秀吉">
	</label>
	<input type="submit" value="登録"><br>
	</form>
	<br><br>

        <div class="box_css">
            <h3>---💡ヒント💡---</h3>
            <h4>何を入力すればいいか分からないよ～(泣)」っていう人は↓の「日本の偉人一覧」または「海外の偉人一覧」から1つ選んでね!!</h4>
        </div><br>

        <div class="test">
            <div class="tape-box">
                <div class="tape"></div><br>
                <h4>[日本の偉人一覧]</h4>      
                <form action="./Insert" method="post">
                    <label>
                        <select name="ijin">
                            <option>---好きな偉人を選んでね---</option>
                            <option>夏目漱石</option>
                            <option>福沢諭吉</option>
                            <option>坂本龍馬</option>
                            <option>織田信長</option>
                            <option>伊能忠敬</option>
                            <option>野口英世</option>
                            <option>太宰治</option>
                            <option>北里柴三郎</option>
                            <option>伊藤博文</option>
                            <option>西郷隆盛</option>
                            <option>岸信介</option>
                            <option>聖徳太子</option>
                            <option>徳川家康</option>
                            <option>武田信玄</option>
                            <option>松尾芭蕉</option>
                            <option>宮沢賢治</option>
                            <option>芥川龍之介</option>
                            <option>手塚治虫</option>
                            <option>紫式部</option>
                            <option></option>
                        </select>
                    </label>
                    <input type="submit" value="登録"><br>
                </form><br>
            </div>

            <div class="test">
                <div class="tape-box">
                    <div class="tape"></div><br>
                    <h4>[海外の偉人一覧(画家)]</h4>
                    <form action="./Insert" method="post">
                        <label>
                            <select name="ijin">
                                <option>---好きな偉人を選んでね---</option>
                                <option>レオナルド・ダ・ヴィンチ</option>
                                <option>レンブラント・ファン・レイン</option>
                                <option>ピエール＝オーギュスト・ルノワール</option>
                                <option>ジャン＝フランソワ・ミレー</option>
                                <option>クロード・モネ</option>
                                <option>ミケランジェロ・ブオナローティ</option>
                                <option>サルバドール・ダリ</option>
                                <option>フランシスコ・デ・ゴヤ</option>
                                <option>ラファエロ・サンティ</option>
                                <option>ヨハネス・フェルメール</option>
                                <option>フィンセント・ファン・ゴッホ</option>
                                <option>エドヴァルド・ムンク</option>
                                <option>パブロ・ピカソ</option>
                                <option>バンクシー</option>
                            </select>
                        </label>
                        <input type="submit" value="登録"><br>
                    </form><br>    
                </div>

                <div class="test">
                    <div class="tape-box">
                        <div class="tape"></div><br>
                        <h4>[海外の偉人一覧(建築家)]</h4>
                        <form action="./Insert" method="post">
                            <label>
                                <select name="ijin">
                                    <option>---好きな偉人を選んでね---</option>
                                    <option>アントニ・ガウディ</option>
                                    <option>フランク・ロイド・ライト</option>
                                    <option>ブルーノ・タウト</option>
                                    <option>ミース・ファン・デル・ローエ</option>
                                    <option>ル・コルビュジエ</option>
                                    <option>アルヴァ・アアルト</option>
                                    <option>フランク・ゲーリー</option>
                                    <option>リチャード・ロジャース</option>
                                    <option>ノーマン・フォスター</option>
                                    <option>ジャン・ヌーヴェル</option>
                                    <option>フランク・ゲーリー</option>
                                </select>
                            </label>
                            <input type="submit" value="登録"><br>
                        </form><br>    
                    </div>

                    <div class="test">
                        <div class="tape-box">
                            <div class="tape"></div><br>
                            <h4>[海外の偉人一覧(音楽家)]</h4>
                            <form action="./Insert" method="post">
                                <label>
                                    <select name="ijin">
                                        <option>---好きな偉人を選んでね---</option>
                                        <option>ヨハン・セバスティアン・バッハ</option>
                                        <option>ヴォルフガング・アマデウス・モーツァルト</option>
                                        <option>ルートヴィヒ・ヴァン・ベートーヴェン</option>
                                        <option>ピョートル・イリイチ・チャイコフスキー</option>
                                        <option>リヒャルト・ワーグナー</option>
                                        <option>ヨハネス・ブラームス</option>
                                        <option>フランツ・シューベルト</option>
                                        <option>ロベルト・シューマン</option>
                                        <option>ジュゼッペ・ヴェルディ</option>
                                        <option>ゲオルク・フリードリヒ・ヘンデル</option>
                                    </select>
                                </label>
                                <input type="submit" value="登録"><br>
                            </form><br>
                        </div>

                        <div class="test">
                            <div class="tape-box">
                                <div class="tape"></div><br>
                                <h4>[海外の偉人一覧(哲学)]</h4>
                                <form action="./Insert" method="post">
                                    <label>
                                        <select name="ijin">
                                            <option>---好きな偉人を選んでね---</option>
                                            <option>ソクラテス</option>
                                            <option>プラトン</option>
                                            <option>アリストテレス</option>
                                            <option>タレス</option>
                                            <option>ヘラクレイトス</option>
                                            <option>ピタゴラス</option>
                                            <option>エピクロス</option>
                                            <option>デモクリトス</option>
                                            <option>孔子</option>
                                            <option>孟子</option>
                                            <option>墨子</option>
                                            <option>トマス・ホッブズ</option>
                                            <option>ジョン・ロック</option>
                                            <option>アダム・スミス</option>
                                            <option>ジェレミ・ベンサム</option>
                                            <option>ジョン・ステュアート・ミル</option>
                                            <option>シャルル・ド・モンテスキュー</option>
                                        </select>
                                    </label>
                                    <input type="submit" value="登録"><br>
                                </form><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <img src="image/neko.png" alt="猫のイラスト">
        </div><br>
        <div class="chalk1"></div>
        <div class="chalk2"></div>
    </div>
</body>
<script>
   function validateForm() {
       var ijinInput = document.getElementById("ijinInput").value.trim();
       if (ijinInput === "") {
           alert("名前を入力してください。");
           return false; // フォームのサブミットを中止
       }
       // 他の必要な入力チェックがあればここに追加
       return true; // フォームをサブミット
   }
</script>
</html>