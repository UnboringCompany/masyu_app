import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'fr_FR': {
          'title': 'MASYU',
          'resume': 'Reprendre',
          'challenge': 'Défi contre la montre',
          'new_game': 'Nouvelle partie',
          'size': 'Taille de la grille :',
          'language': 'Français',
          'rules': 'Règles',
          'score': 'Score',
          'back': 'Retour',
          'credits': 'Crédits :\nProjet réalisé par : Unboring Company\n',
          'team':
              'Une équipe composée de :\nLéo WADIN\nAurélien HOUDART\nDamien COLLOT\nElena BEYLAT',
          'goal': 'But du jeu :',
          'goal_text':
              'Vous devez relier tous les points de la grille pour faire une boucle unique. Vous ne pouvez passer qu\'une fois dans chaque case.',
          'white': 'Cases blanches :',
          'white_text':
              'Pour passer dans un pion blanc, vous devez avancer en ligne droite. Vous devez tourner de 90° dans la case d\'avant, celle d\'après ou les deux.',
          'black': 'Cases noires :',
          'black_text':
              'Pour passer dans pion noir, vous devez faire un angle de 90° dans la case qui contient le pion. Vous ne devez surtout pas tourner dans les cases juste avant et juste après.',
          'abandon': 'Êtes vous sûr de vouloir abandonner ?',
          'abandon_text': 'Abandonner vous fera perdre des points d\'élo',
          'bravo': 'Bravo !',
          'bravo_text':
              'Vous avez gagné en @time \nVous avez ainsi gagné @points points',
          'game_over': 'Dommage !',
          'game_over_text':
              'Vous n\'avez pas trouvé la solution\nVous perdez @points points',
          'clue': 'Êtes vous sûr de vouloir un indice ?',
          'clue_text':
              'L\'indice vous fera perdre @points points sur cette partie',
          'game_back': 'Enregistrer ou abandonner',
          'game_back_text':
              'Si vous abandonnez la partie vous perdrez @points points',
          'give_up': 'Abandonner',
          'save': 'Sauvegarder',
          'timer_defeat_title': 'Défaite',
          'timer_defeat_content':
              'Temps de résolution dépassé vous avez perdu @points points',
          'timer_victory_title': 'Victoire',
          'timer_victory_content':
              'Vous avez gagné avant la fin du chrono\nVous avez ainsi gagné @points points',
          'give_up_timer': 'Abandonner',
          'database_change': 'Changement du nom fait avec succés',
          'tuto': 'Tutoriel',
          'no_save': 'Aucune Sauvegarde',
          'classement': 'Classement',
          'nom': 'Nom',
          'scrore': 'Score',
          'ratio': 'Ratio'
        },
        'en_UK': {
          'title': 'MASYU',
          'resume': 'Resume',
          'challenge': 'Challenge against the clock',
          'new_game': 'New game',
          'size': 'Grid size :',
          'rules': 'Rules',
          'language': 'English',
          'score': 'Score',
          'back': 'Back',
          'credits': 'Credits :\nProject made by : Unboring Company\n',
          'team':
              'A team composed of :\nLéo WADIN\nAurélien HOUDART\nDamien COLLOT\nElena BEYLAT',
          'goal': 'Goal of the game :',
          'goal_text':
              'You have to connect all the points of the grid to make a unique loop. You can only go through each case once.',
          'white': 'White cases :',
          'white_text':
              'To go through a white pawn, you must go straight. You must turn 90° in the case before, the one after or both.',
          'black': 'Black cases :',
          'black_text':
              'To go through a black pawn, you must make a 90° angle in the case that contains the pawn. You must not turn in the cases just before and just after.',
          'abandon': 'Are you sure you want to give up ?',
          'abandon_text': 'Giving up will make you lose elo points',
          'bravo': 'Good Job !',
          'bravo_text': 'You won in @time \nYou thus won @points points',
          'game_over': 'Too bad !',
          'game_over_text':
              'You did not find the solution\nYou lose @points points',
          'clue': 'Are you sure you want a clue ?',
          'clue_text':
              'The clue will make you lose @points points on this game',
          'game_back': 'Save or Give up',
          'game_back_text':
              'If you abandon the game you will lose @points points',
          'give_up': 'Give up',
          'save': 'Save',
          'timer_defeat_title': 'Defeat',
          'timer_defeat_content':
              'Resolution time exceeded you have lost @points points',
          'timer_victory_title': 'Victory',
          'timer_victory_content':
              'You won before the end of the clock\nYou thus won @points points',
          'give_up_timer': 'Give up',
          'database_change': 'Name change successfully completed',
          'tuto': 'Tutorial',
          'no_save': 'No save',
          'classement': 'Ranking',
          'nom': 'Name',
          'scrore': 'Score',
          'ratio': 'Ratio'
        },
        'de_DE': {
          'title': 'MASYU',
          'resume': 'Übernehmen',
          'challenge': 'Herausforderung gegen die Uhr',
          'new_game': 'Neue Partei',
          'size': 'Rastergröße :',
          'rules': 'Regeln',
          'language': 'Deutsch',
          'score': 'Punktzahl',
          'back': 'Zurück',
          'credits': 'Credits :\nProjekt von : Unboring Company\n',
          'team':
              'Ein Team bestehend aus :\nLéo WADIN\nAurélien HOUDART\nDamien COLLOT\nElena BEYLAT',
          'goal': 'Ziel des Spiels :',
          'goal_text':
              'Sie müssen alle Punkte der Raster verbinden, um eine einzigartige Schleife zu bilden. Sie können nur einmal durch jede Fall gehen.',
          'white': 'Weiße Fälle :',
          'white_text':
              'Um durch ein weißes Pferd zu gehen, müssen Sie geradeaus gehen. Sie müssen sich 90° in den Fall vor, den nach oder beide drehen.',
          'black': 'Schwarze Fälle :',
          'black_text':
              'Um durch ein schwarzes Pferd zu gehen, müssen Sie einen 90°-Winkel in den Fall drehen, der das Pferd enthält. Sie müssen sich nicht in die Fälle drehen, die sich direkt vor und direkt nach befinden.',
          'abandon': 'Bist du sicher, dass du aufgeben willst ?',
          'abandon_text': 'Aufgeben wird Sie Elo-Punkte kosten',
          'bravo': 'Gute Arbeit !',
          'bravo_text':
              'Du hast in @time gewonnen \nDu hast also @points Punkte gewonnen',
          'game_over': 'Schade !',
          'game_over_text':
              'Sie haben die Lösung nicht gefunden\nDu verlierst @points Punkte',
          'clue': 'Bist du sicher, dass du einen Hinweis willst ?',
          'clue_text':
              'Der Hinweis wird Sie @points Punkte auf diesem Spiel kosten',
          'game_back': 'Speichern oder aufgeben',
          'game_back_text':
              'Wenn Sie das Spiel abbrechen, verlieren Sie @points Punkte',
          'give_up': 'Aufgeben',
          'save': 'Zu schützen',
          'timer_defeat_title': 'Niederlage',
          'timer_defeat_content':
              'Lösungszeit überschritten Sie haben @points Punkte verloren',
          'timer_victory_title': 'Gute Arbeit !',
          'timer_victory_content':
              'Sie haben vor Ablauf der Uhr gewonnen\nSie haben also @points Punkte gewonnen',
          'give_up_timer': 'Aufgeben',
          'database_change': 'Namensänderung erfolgreich durchgeführt',
          'tuto': 'Tutorial',
          'no_save': 'Keine Sicherung',
          'classement': 'Ranking',
          'nom': 'Name',
          'scrore': 'Punktzahl',
          'ratio': 'Verhältnis'
        },
        'es_ES': {
          'title': 'MASYU',
          'resume': 'Reanudar',
          'challenge': 'Reto contra el reloj',
          'new_game': 'Nuevo juego',
          'size': 'Tamaño de la cuadrícula :',
          'rules': 'Reglas',
          'language': 'Español',
          'score': 'Puntuación',
          'back': 'Espalda',
          'credits': 'Créditos :\nProyecto realizado por : Unboring Company\n',
          'team':
              'Un equipo compuesto por :\nLéo WADIN\nAurélien HOUDART\nDamien COLLOT\nElena BEYLAT',
          'goal': 'Objetivo del juego :',
          'goal_text':
              'Tienes que conectar todos los puntos de la cuadrícula para formar un único bucle. Solo puedes pasar una vez por cada caso.',
          'white': 'Casos blancos :',
          'white_text':
              'Para pasar por un peón blanco, debes ir recto. Debes girar 90° en el caso antes, el que viene después o ambos.',
          'black': 'Casos negros :',
          'black_text':
              'Para pasar a la ficha negra, debe hacer un ángulo de 90° en la casilla que contiene la ficha.No debes girar en las casillas justo antes y justo después.',
          'abandon': '¿Estás seguro de que quieres abandonar?',
          'abandon_text': 'Abandonar te hará perder puntos de elo.',
          'bravo': '¡Bien hecho!',
          'bravo_text': 'Has ganado en @time \nHas ganado @points puntos.',
          'game_over': 'Lástima',
          'game_over_text':
              'No has encontrado la solución\nPierdes @points puntos',
          'clue': '¿Seguro que quieres una pista?',
          'clue_text': 'La pista te costará @points puntos para este juego',
          'game_back': 'Guardar o abandonar',
          'game_back_text': 'Si abandonas el juego perderás @points puntos',
          'give_up': 'Abandonar',
          'save': 'Guardar',
          'timer_defeat_title': 'Derrota',
          'timer_defeat_content':
              'Tiempo de resolución excedido ha perdido @points puntos',
          'timer_victory_title': '¡Bien hecho!',
          'timer_victory_content':
              'Has ganado antes de que se agote el tiempo\nHas ganado @points puntos',
          'give_up_timer': 'Abandonar',
          'database_change': 'Cambio de nombre realizado con éxito',
          'tuto': 'Tutorial',
          'no_save': 'Sin respaldo',
          'classement': 'Clasificación',
          'nom': 'Nombre',
          'scrore': 'Puntuación',
          'ratio': 'Ratio'
        },
        'ja_JP': {
          'title': 'MASYU',
          'resume': 'レジュメ',
          'challenge': '時計に挑む',
          'new_game': '新作ゲーム',
          'size': 'グリッドサイズ',
          'score': 'スコア',
          'rules': 'ルール',
          'back': 'バック',
          'language': '日本',
          'credits': 'クレジット : Unboring Company\n',
          'team':
              'チーム構成は以下の通りです：\nLéo WADIN\nAurélien HOUDART\nDamien COLLOT\nElena BEYLAT',
          'goal': 'ゲームの目標：',
          'goal_text':
              'グリッドのすべての点を接続して、1つのユニークなループを作成する必要があります。各ケースに1回だけ通過できます。',
          'white': '白いケース：',
          'white_text': '白い駒を通過するには、直進する必要があります。直前、直後のケースのいずれか、または両方に90°回転します。',
          'black': '黒いケース：',
          'black_text': '黒い駒を通過するには、駒を含むケースに90°回転します。直前と直後のケースを回転させる必要はありません。',
          'abandon': 'あなたはあきらめたいと思いますか？',
          'abandon_text': 'あきらめると、あなたはeloポイントを失います。',
          'bravo': 'よくできました！',
          'bravo_text': 'あなたは@timeで勝ちました \nあなたは@pointsポイントを獲得しました',
          'game_over': '残念！',
          'game_over_text': 'あなたは解決策を見つけていません\nあなたは@pointsポイントを失います',
          'clue': 'あなたはヒントを必要としていますか？',
          'clue_text': 'このゲームのために@pointsポイントを支払うヒント',
          'game_back': '保存または放棄',
          'game_back_text': 'ゲームを放棄すると、@points ポイントを失います',
          'give_up': 'あきらめる',
          'save': '守るために',
          'timer_defeat_title': '敗戦',
          'timer_defeat_content': '解決時間超過で@points点減点',
          'timer_victory_title': 'よくできました！',
          'timer_victory_content': 'あなたは時間内に勝ちました\nあなたは@pointsポイントを獲得しました',
          'give_up_timer': 'あきらめる',
          'database_change': '名義変更が無事完了',
          'tuto': 'チュートリアル',
          'no_save': 'バックアップなし',
          'classement': 'ランキング',
          'nom': '名称',
          'scrore': 'スコア',
          'ratio': '比率'
        },
      };
}
