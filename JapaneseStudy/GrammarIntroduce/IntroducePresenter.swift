//
//  IntroducePresenter.swift
//  JapaneseStudy
//
//  Created by とうりょうい on 2020/09/18.
//  Copyright © 2020 とうりょうい. All rights reserved.
//

import Foundation
class IntroducePresenter {
    var grammarDetail = ["文型：〜あっての......": ["N1 + あってのN2", "〜があるから・・・が成り立つ", "・お客様あっての仕事ですから、いつもご来店いただくお客様には感謝しております。\n\n・学生あっての学校ですから、いくら設備が良くても、素晴らしい先生がいても、学生が来なければ意味がない。\n\n・愛あっての結婚生活でしょ。愛がないならどうして一緒に暮らしてるの？", "0"], "文型：〜いかんだ / いかんでは / 〜いかんによっては": ["N（の） + いかんでは / いかんによっては", "〜によっては / 〜次第で / 〜かどうかで", "・今期の私の業績いかんで、昇進できるかどうが決まる。\n\n・診断結果いかんでは、次の試合の出場をあきらめなければならない。\n\n・台風の状況いかんでは、旅行をキャンセルせねばならない。", "0"], "文型：〜いかんにかかわらず / いかんによらず / いかんをとわず": ["N（の） + いかんにかかわらず / いかんによらず / いかんをとわず", "〜かどうか関係なく\n前件の事柄がどうであれ、それに関係なく後ろの事柄が成立することを表す。", "・理由のいかんによらず、遅れてきた者は試験を受けることは許されません。\n\n・学歴や年齢のいかんを問わず、どなたでも応募することが可能です。\n\n・天候のいかんに関わらず、明日はイベントを行います。", "0"], "文型：〜かたがた": ["N + かたがた", "〜のついでに / 〜も兼ねて", "・今度、結婚の挨拶かたがた、そちらに伺います。\n\n・近くに寄ったので、先日のお礼かたがた挨拶に伺いました。\n\n・ご出張かたがた、ぜひ京都を観光なさってください。\n\n・メールにて大変恐縮ではございますが、ご報告かたがたお礼申し上げます。", "0"], "文型：〜かたわら": ["V（辞書形）+かたわら\nN + のかたわら", "〜一方で、別に〜", "・田中先生は教師として働くかたわら、新たしい教科書の開発にも取り組んでいる。\n\n・母は家事のかたわら、近所に住む外国人に日本語を教えている。\n\n・彼女は子育てのかたわら、大学に通っている。", "0"], "文型：〜がてら": ["V（ます形）ます + がてら\nする動詞のN + がてら", "〜を兼ねて / 〜のついでに\n後件には「行く」や「散歩する」のように移動に関係する動詞がよく使われる。「ついで」よりも少し硬い表現である。", "・散歩がてら、ちょっとコンビニまで行ってきます。\n\n・毎日車で出勤しているが、今日は運動がてら自転車で行くことにする。\n\n・帰省がてら、地元に新しくできたデパートに行くつもりだ。\n\n・お花見がてら、公園を散歩しよう。", "0"], "文型：〜かと思いきや": ["V（普通形）+ かと思いきや\nイA（普通形）+ かと思いきや\nナA（普通形）+ かと思いきや\nN（普通形）+ かと思いきや", "〜と思ったが、実際は・・・", "・逆転ゴールが決まったかと思いきや、審判のホイッスルがなり、オフサイドと判定された。\n\n・試験は難しいと思いきや、思っていたよりも簡単だった。\n\n・ロバートさんは日本人の奥さんがいるから、日本語が上手かと思いきや、全然話せなかった。\n\n・新しい取引先の担当者は怖い人かと思いきや、とても優しくて良い人だった。", "0"], "文型：〜が早いか": ["V（辞書形）+ がはやいか", "〜するとすぐに", "・授業の終わりのチャイムが鳴るが早いか、生徒たちは運動場へボールを持って走っていった。\n\n・電車のドアが開くが早いか、並んでいた人たちは中に乗り込んだ。\n\n・警察に気がつくが早いか、その男はどこかへ向かって走り出した。\n\n・店が開くが早いか、開店前から並んでいたお客さんは我先にとセール品の方に向かって走っていった。", "0"], "文型：〜からある / 〜からする / 〜からの": ["N + からある\nNは数量を表す言葉", "〜か、それ以上の・・・\n数量や程度が大きいことを強調する言い方。", "・ジェシカさんは華奢な体つきにも関わらず、１０キロからある荷物を軽々と持ち上げることができる。\n\n・トムさんとレストランに行った時に、１０万円からするワインを注文した時は正直驚いた。\n\n・オリンピックの抽選には、６００万人からの応募者が殺到した。", "0"], "文型：〜かれ〜かれ": ["いAかれ + いAかれ", "程度に差はあっても〜だ。", "・多かれ少なかれ、誰にだって夢がある。\n\n・遅かれ早かれ、彼は仕事で成功する見込みがある。\n\n・頑張っていれば遅かれ早かれ、いつか結果は出るはずだ。", "0"], "文型：〜きっての": ["N + きっての", "〜の中で一番の\n組織や地域、グループの中で最も優秀なものや、代表するものを言いたい時に使う。", "・清水寺は京都きっての観光名所だ。\n\n・田中はうちのチームきっての暴れん坊だ。\n\n・彼はグループきってのイケメンで、女性のみならず男性からも人気がある。\n\n・彼はうちの大学きっての秀才だ。", "0"], "文型：〜きらいがある": ["V（辞/ない）+ きらいがある\nN + のきらいがある", "〜の傾向がある\nよくない傾向について言う時に使われる。自然現象に使うことはできない。書き言葉的で話す時にはほとんど使わない。", "・彼はいつも、現実を甘く見るきらいがある。\n\n・最近の若者は本を読まないきらいがある。\n\n・社会人になってから、運動不足のきらいがあるので、ジムに通おうと思っています。", "0"], "文型：〜極まる / 極まりない": ["ナAな + 極まる\nナAな + 極まりない\nナAなこと + 極まりない", "非常に〜だ / この上なく〜だ\n程度が非常に高いことを表す。", "・この辺りにはコンビニもないし、スーパーもないし、不便極まりない。\n\n・毎日ファストフードやコンビニ弁当なんて、不健康極まりないよ。\n\n・結婚式で息子の手紙に感極まって泣いてしまった。\n\n・そんな軽装で富士山に登るなんて危険極まりないよ。", "0"], "文型：〜ごとき / ごとく / ごとし": ["V（辞書形/タ形）/Nの  + かのごとき + N\nV（辞書形/タ形）/Nの  + かのごとく（文中）\nV（辞書形/タ形）/Nの  + かのごとし（文末）", "〜ように\n「ごとき」が人を表す名詞と接続した場合、相手を軽視した表現になる。また、自分について言う場合は謙遜の意味を持つ。", "・光陰矢の如し。（月日はあっという間にすぎるという意味のことわざ）\n\n・いつものごとく、ジョンさんは遅刻してきた。\n\n・彼は何でも知っているかの如く、いつも自信を持って話す。\n\n・彗星の如く現れたこの選手は一体何者なんだ。", "0"], "文型：〜こととて": ["V（普通形）＋こととて\nイA（普通形）＋こととて\nナA（普通形）な＋こととて\n名詞の＋こととて", "〜だから / 〜なので\n謝罪の理由を表す時に使われる。", "・子供のやったこととて、どうや許してやってください。\n\n・突然のこととて、まだ準備ができておりません。\n\n・慣れないこととて、あまり上手に作れませんでした。\n\n・急なこととて、何も準備できていません。", "0"], "文型：〜始末だ": ["V（辞書形）+ （という）始末だ", "〜という結果だ\n色々と経過を経て、最後には悪い結果になったと言いたい時に使う。", "・やってもいないのに、痴漢だと疑われ、さらには警察にまで逮捕されてしまうという始末だ。\n\n・まったく最近の若い者は。悪いことをしたから注意しただけなのに、逆ギレする始末だ。\n\n・息子はせっかく３年間、日本語へ留学したのに、授業中居眠りばかりしていたせいでこの始末だ。まったく誰のお金だと思っているんだ。", "0"], "文型：〜ずくめ": ["N + ずくめ", "〜が多い / 〜ばかりだ", "・コナンは黒ずくめの男たちによって、体を小さくされてしまった。\n\n・毎日、残業ずくめで大変だ。\n\n・この学校は規則ずくめで、嫌になる。\n\n・今回のオリンピックは記録ずくめの大会となった。", "0"], "文型：〜ずにはおかない / 〜ないではおかない": ["V（ナイ形）ない + ずにはおかない　※「する」は「せずにはおかない」となる。\nV（ナイ形）+ ではおかない", "①必ず〜する （強い決意を表す）\n②自然に〜してしまう", "・最近、公開されてあの映画は演技は女優が主演なので、観客を感動させずにはおかないだろう。\n\n・彼女の美貌は多くの男性を虜にさせずにはおかない。\n\n・指名手配犯を目撃したのだから、警察に通報せずにはおかない。\n\n・景気は一向に回復しないので、このままだと国民に不信感を与えずにはおかないだろう。", "0"], "文型：〜ずにはすまない / 〜ないではすまない": ["V（ナイ形）ない + ずにはすまない　※「する」は「せずにはすまない」となる。\nV（ナイ形）+ ではすまない", "〜ないでは許されない / 必ず〜しなければならない\nその場の状況や社会的常識などを考慮して、「〜しなければならない」と言いたい時に使う", "・借りたカメラを壊してしまったので、弁償せずにはすまない。\n\n・薬だけでは直すことができないので、手術せずにはすまない。\n\n・せっかく私のために開いてくれたパーティーなので参加せずにはすまなかった。\n\n・母の大事なコーヒーカップを割ってしまったので、叱られずにはすまないだろう。", "0"], "文型：〜術がない": ["V（辞書形）＋ 術(すべ)がない", "〜する方法がない / 〜することができない", "・試せることは全て試したし、もうこれ以上なす術がない。\n\n・KFCのレシピは極秘なので、たとえ社員になっても知る術がないらしい。\n\n・電話番号やメールアドレスもわからないし、SNSも使っていないし、連絡する術がない。\n\n・敵は空から攻撃してくるので、我々はもう戦う術がない。", "0"], "文型：〜すら": ["N + すら", "〜も / 〜さえ", "・トムさんは１０年も日本に住んでいるのに、挨拶すら日本語でできない。\n\n・田中さんはリンさんと仲がいいのに、電話番号すら知らないそうだ。\n\n・彼は酔っ払いすぎて、まともに話すことすらできない。\n\n・１０年以上、数学を教えている先生ですら、この問題を解けなかった。", "0"], "文型：〜そばから": ["V（辞書形 / タ形）+ そばから", "〜しても、すぐに・・・", "・ジョンさん、注意したそばから間違えてるよ。\n\n・子供は洗濯したそばから、服を汚すので大変だ。\n\n・キムさんは聞いたそばから、忘れていつも同じ質問を繰り返す。\n\n・彼女は「今日からダイエットする」と言ったそばから、カフェでケーキを食べていた。", "0"], "文型：ただ〜のみ": ["ただ + V（辞書形） + のみ\nただ + イAい + のみ\nただ + ナである + のみ\nただ + N + のみ", "ただ〜だけ\nそれ以外にはないと限定して言う表現。", "・日本語が上手になりたければ、ただ練習するのみだ。\n\n・私たちは裕福になりたいわけじゃないんです。ただ平和のみを願っています。\n\n・やれることは全てやった。あとはただ結果を待つのみだ。", "0"], "文型：〜たためしがない": ["V（タ形）+ ためしがない", "〜という前例がない / 〜ということは一度も見たり・聞いたりしたことがない\n話し手の不満や驚きを表す。", "・彼は一度も、約束の時間通りに来たためしがない。\n\n・息子は母の日に、何かしてくれたためしがない。\n\n・彼女は「明日からダイエット始める」と言って、始めたためしがない。", "0"], "文型：〜たところで": ["V（タ形）+ ところで", "いくら〜しても\n前件に来ることをいくら〜しても、期待する結果が得られないことを表す。", "・テストまであと１０分だし、今さら本やノートを見たところで何も変わらないよ。\n\n・もう絶対に間に合わないし、慌てたところでどうにもならないよ。\n\n・１日に１００個売れたところで、利益は５００円程度だし、この商品の製造は中止せざるを得ないかなあ。\n\n・これ以上議論したところで、まだ答えが出るテーマではないので、時間の無駄だよ。", "0"]]
    
    func nigate(grammarTitle: (String, Int, Int)) {
        var daTa = UserDefaults.standard.array(forKey: String(grammarTitle.1)) as? [Int]
        if daTa == nil {
            UserDefaults.standard.set([grammarTitle.2], forKey: String(grammarTitle.1))
        } else {
            if !(daTa?.contains(grammarTitle.2))! {
                daTa?.append(grammarTitle.2)
                UserDefaults.standard.set(daTa, forKey: String(grammarTitle.1))
            }
        }
    }
}