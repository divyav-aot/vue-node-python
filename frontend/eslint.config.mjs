// eslint.config.mjs
import vue from 'eslint-plugin-vue';
import typescript from '@typescript-eslint/eslint-plugin';
import parser from '@typescript-eslint/parser';
import vueParser from 'vue-eslint-parser';
import prettier from 'eslint-plugin-prettier';

export default [
  {
    files: ['**/*.ts', '**/*.vue', '**/*.js'],
    languageOptions: {
      parser: vueParser,
      parserOptions: {
        ecmaVersion: 2020,
        sourceType: 'module',
        parser: {
          ts: parser,
        },
        extraFileExtensions: ['.vue'],
      },
    },
    plugins: {
      vue,
      '@typescript-eslint': typescript,
      prettier
    },
    rules: {
      // Vue rules
      'vue/multi-word-component-names': 'warn',

      // TypeScript rules
      '@typescript-eslint/no-unused-vars': 'warn',

      // General rules
      'no-console': 'warn',
      'no-debugger': 'warn',
      // Prettier integration
      'prettier/prettier': 'warn', 

    },
  },
];
