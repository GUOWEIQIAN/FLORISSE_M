function turbineType = dtu10mw()
%DTU10MW This functions creates a turbine type of the DTU10MW reference turbine
%    More information can be found in :cite:`Christian2013`.

% Available control methods
availableControl = {'axialInduction'};
% Instantiate turbine with the correct dimensions and characteristics
% obj = turbine_type(rotorRadius, genEfficiency, hubHeight, pP, ...
turbineType = turbine_type(178.3/2., 0.944, 119.0, 1.88, ...
                           getFileLocation(), availableControl, 'DTU 10 MW Turbine');
end

% This function is compatible with C-compilation
function Path = getFileLocation()
    filePath = mfilename('fullpath');
    Path = filePath(1:end-1-length(mfilename()));
end
