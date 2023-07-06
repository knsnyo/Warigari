import 'package:app/main.dart';
import 'package:app/src/modules/common/styles/size.dart';
import 'package:app/src/modules/common/widgets/input.dart';
import 'package:app/src/modules/signup/views/atoms/signup_form_tag.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NicknameInput extends HookConsumerWidget {
  const NicknameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupNotifier = ref.watch(signupProvider.notifier);
    final Color grey = Theme.of(context).colorScheme.shadow;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: vw(context, 20),
          child: const SignupFormTag(text: '닉네임'),
        ),
        Container(
          width: vw(context, 70),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: grey)),
          ),
          child: Input(
            init: '',
            obscureText: false,
            onChangeText: (nickname) => signupNotifier.setNickname(nickname),
            hint: '닉네임을 입력해주세요.',
          ),
        )
      ],
    );
  }
}
