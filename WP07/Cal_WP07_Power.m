% Do Hieu TRINH
% NorthVolt / Battery System 
% do.hieu@northvolt.com
% 20210928
% Calibration for WP07_Power
% Cal_WP07_Power.m

Cxx_sch_pw = 0.1;   % sec

Cxx_cell_v_cut_off_chg = 4.1;       %V
Cxx_cell_v_cut_off_dch = 3.025;     %V
Cxx_cell_v_cut_off_dch_lowt = 3.2;  %V
Cxx_string_v_cut_off_dch = 1117;    %V

% Cxx_cell_v_fbdn_chg = 4.11;
% Cxx_cell_v_fbdn_dch = 3.09;

Cxx_cell_v_fbdn_chg = 4.11;
Cxx_cell_v_fbdn_dch = 3.015;

%Cxx_str_pw_dch_cut_off = 90;   % kW Replaced by table

% Cxx_dcr_eol_chg = ;    %Ohm
% Cxx_dcr_eol_dch = 0.772e-3*1.2;    %Ohm

Cxx_dcr_eol_chg = 0.0025;   % Ohm
Cxx_dcr_eol_dch = 0.0025;   % Ohm

Ctx_dcr_eol_temp = [0 10 25 45];        %°C
Ctx_dcr_eol_dcr = [0.002858 0.002047 0.001273 0.000905] * 1.1;         %Ohm

Cxx_1cp_cell = 508.2;       % W
Cxx_1cp_str  = 183;       % kW
Cxx_low_dch_pow = 5.5;      % kW
Cxx_low_dch_hyst_on = 3;    % °C
Cxx_low_dch_hyst_off = 0;   % °C

Ctx_pow_chg_drt_temp = [-22 -21.9  2.9  3 51 52];
Ctx_pow_chg_drt_coef = [0     0    0    1 1  0];

Ctx_pow_dch_drt_temp = [-22 -21.9  -0.1  0 51 52];
Ctx_pow_dch_drt_coef = [0     0    0    1 1  0];
Cxx_cell_t_fbdn_dch = -22;

Cxx_str_i_abs_max = 168;    % A

Cxx_dcpm_r = 0.0464;

% Ctx_pow_dch_soc_neg_temp = [0 10 25 45];        %°C
% Ctx_pow_dch_soc_neg_pow = [45 60 90 130];       % kW

Ctx_pow_dch_soc_neg_pow_now = [0.1 0.2 0.33 0.5 1]*183;        %°kW
Ctx_pow_dch_soc_neg_pow_lim = [128 132 136 143 156];       % kW

% Power Mng State machine
Cxx_pow_dir_init = 0;
Cxx_pow_dir_stb = 1;
Cxx_pow_dir_chg = 2;
Cxx_pow_dir_dch = 3;
Cxx_i_thrd_chg_act = 1;
Cxx_i_thrd_dch_act = -1;
Cxx_pow_dir_cf_time = 0.1;

