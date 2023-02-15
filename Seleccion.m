function i_best = Seleccion (aptitud, N) 
    N=numel(aptitud)
    aptitud_total = sum(aptitud);%paso 1-4

    r =rand();
    p_sum = 0;

    for i=1:N
        p_sum = p_sum + aptitud(i)/aptitud_total
    
        if p_sum>=r
            i_best = i; %i recorre a los padres, i best es el mejor padre 
            return
       
        end
   
    end
    i_best = N;
end
