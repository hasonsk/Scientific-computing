function [nghiem, fb] = PhuongPhapChia2(f, a, c, eps)
    % Initialize variables
    saisothucte = eps + 1;
    
    % Main loop
    while(saisothucte >= eps)
        b = (a+c)/2;
        fa = feval(f, a);
        fb = feval(f, b);
        fc = feval(f, c);
        if(fa*fb < 0)
            c = b;
        else 
            a = b;
        end
        saisothucte = abs(c-a);
    end
    
    % Output variables
    nghiem = b;
    fprintf("Nghiem cua phuong trinh la: %f\n", nghiem);
end
