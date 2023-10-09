// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:notable/application/auth/auth_bloc.dart' as _i9;
import 'package:notable/application/auth/signin/signin_bloc.dart' as _i8;
import 'package:notable/application/notes/note_actor/note_actor_bloc.dart'
    as _i5;
import 'package:notable/application/notes/note_watcher/note_watcher_bloc.dart'
    as _i7;
import 'package:notable/domain/auth/i_auth_facade.dart' as _i3;
import 'package:notable/domain/notes/i_notes_repository.dart' as _i6;
import 'package:notable/infrastructure/auth/firebase_auth_facade.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IAuthFacade>(() => _i4.FirebaseAuthFacade());
    gh.factory<_i5.NoteActorBloc>(
        () => _i5.NoteActorBloc(gh<_i6.INotesRepository>()));
    gh.factory<_i7.NoteWatcherBloc>(
        () => _i7.NoteWatcherBloc(gh<_i6.INotesRepository>()));
    gh.factory<_i8.SigninBloc>(() => _i8.SigninBloc(gh<_i3.IAuthFacade>()));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i3.IAuthFacade>()));
    return this;
  }
}
