% INTERACTIVE VOICE CHANGER
load handel.mat   % loads 'y' and 'Fs'

disp('Playing original audio...');
sound(y, Fs);
pause(4);

choice = lower(input('How do you want to listen? (fast / slow / echo / normal): ', 's'));

switch choice
    case 'fast'
        sound(y, Fs * 1.5);
    case 'slow'
        sound(y, Fs * 0.7);
    case 'echo'
        delay = 3000;
        echoed = y + 0.4 * [zeros(delay,1); y(1:end-delay)];
        sound(echoed, Fs);
    otherwise
        sound(y, Fs);
end