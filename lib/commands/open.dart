import 'package:nyxx/nyxx.dart';
import 'package:nyxx/commands.dart';
import 'dart:async';

import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/cases/horizon.dart';
import 'package:dart_case_bot/config.dart' as config;

@Command(name: "open")
class OpenCommand extends CommandContext {
  @Command(main: true)
  Future run() async {
    HorizonCase horizonCase = HorizonCase()..activate();

    Skin unboxedSkin = horizonCase.open();

    EmbedBuilder skinEmbed = EmbedBuilder();

    EmbedAuthorBuilder author = EmbedAuthorBuilder()
      ..name = unboxedSkin.weapon.name
      ..url = unboxedSkin.weapon.url
      ..iconUrl = unboxedSkin.weapon.imageUrl;
    EmbedFieldBuilder exterior =
        EmbedFieldBuilder("Exterior", "`${unboxedSkin.wearString}`", true);

    EmbedFieldBuilder wear =
        EmbedFieldBuilder("Wear", "`${unboxedSkin.wear}`", true);

    EmbedFieldBuilder statTrak = EmbedFieldBuilder(
        "Stat-Trak™", "`${unboxedSkin.statTrak.toString()}`", true);

    EmbedFieldBuilder id = EmbedFieldBuilder("id", "`${unboxedSkin.id}`", true);

    EmbedFooterBuilder footer = EmbedFooterBuilder()
      ..iconUrl = "https://images-cdn.9gag.com/photo/aZgrZGW_700b.jpg"
      ..text = "${config.name} v${config.version} by ${config.author}";

    skinEmbed
      ..author = author
      ..title = "${unboxedSkin.statTrakString}${unboxedSkin.name}"
      ..description = "***${unboxedSkin.rarity.name}***"
      ..addFieldBuilder(exterior)
      ..addFieldBuilder(wear)
      ..addFieldBuilder(statTrak)
      ..addFieldBuilder(id)
      ..color = unboxedSkin.rarity.color.embedColor
      ..footer = footer
      ..thumbnailUrl = horizonCase.imageUrl
      ..imageUrl = unboxedSkin.imageUrl
      ..url =
          "https://github.com/l7ssha/nyxx/blob/commands_rework/example/embeds.dart"; //CHANGE THIS LATER
    try {
      await reply(content: 'You unboxed a:', embed: skinEmbed);
    } catch (e) {
      await reply(content: 'RIP! error 400');
      print(e.toString());
    }
  }

  @override
  void getHelp(bool isAdmin, StringBuffer buffer) =>
      buffer.writeln("* open - Opens a test Horizon Case");
}
