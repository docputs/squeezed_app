class Messages {
  const Messages._();

  // CreateWorkoutPage
  static const createWorkoutPageTitle = 'Criar um treino';
  static const createWorkoutSelectWeekdaysLabel = 'Selecione os dias da semana';
  static const createWorkoutNameFieldLabel = 'Nome do treino';
  static const createWorkoutNameHint = 'Ex: costas e bíceps';
  static const createWorkoutObservationsFieldLabel = 'Observações';
  static const createWorkoutSubmitButtonText = 'Próximo';

  // ChooseExercisesPage
  static const chooseExercisesNoExerciseFound = 'Nenhum exercício encontrado';
  static const chooseExercisesNoExerciseSelected = 'Nenhum exercício selecionado';
  static const chooseExercisesOneExerciseSelected = '1 exercício selecionado';
  static String chooseExercisesNExercisesSelected(int n) => '$n exercícios selecionados';

  static const userNotFound = 'Nenhum usuário com este e-mail foi encontrado';
  static const operationNotAllowed = 'Usuário não possui permissões';
  static const invalidEmailAddress = 'E-mail inválido';
  static const emailAlreadyInUse = 'E-mail já está em uso';
  static const weakPassword = 'Senha deve ter no mínimo 6 dígitos';

  static const noAppScaffoldFound = 'Nenhum AppScaffold foi encontrado';

  static const serverFailure = 'Erro no servidor';
  static const unknownError = 'Erro desconhecido';
}
