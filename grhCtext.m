function handle = grhCtext(z, string)

% place text at location of complex numbers in z

for i = 1:length(z)
    if nargin == 1
        handle = text(real(z(i)), imag(z(i)), num2str(i));
    else
        handle = text(real(z(i)), imag(z(i)), string{i});
    end
end