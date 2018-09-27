import 'package:nyxx/nyxx.dart';
import 'package:nyxx/commands.dart';
import 'dart:async';
import 'package:dart_case_bot/cases.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/case.dart';
import 'package:dart_case_bot/config.dart' as config;

@Command(name: "open")
class OpenCommand extends CommandContext {
  @Command(main: true)
  Future run() async {
    Case horizonCase = Cases.horizon;

    Skin unboxedSkin = horizonCase.open();
    await unboxedSkin.activate();
    print(unboxedSkin.imageUrl);
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
      ..iconUrl = "https://avatars1.githubusercontent.com/u/13704699?s=460&v=4"
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
    await reply(content: 'You unboxed a:', embed: skinEmbed);
  }

  @override
  void getHelp(bool isAdmin, StringBuffer buffer) =>
      buffer.writeln("* open - Opens a test Horizon Case");
}
