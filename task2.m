fprintf('Hello\n')
phrase = input('', 's');
exp = 'my name is [^\\ ]*';
name = regexp(phrase, exp, 'match');
name = char(name);
fprintf('Hello %s\n', name(length('my name is ') + 1:end));