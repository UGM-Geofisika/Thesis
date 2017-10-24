clc;
clear;

desain_survey=input('berapa luasan desain surveynya?');

if desain_survey==500
    disp('normal..')
elseif desain_survey>=500
    disp('regional..')
elseif desain_survey>0 && desain_survey<=500
    disp('local..')
else 
    disp('it''s can''t be negative value!')
end

    
