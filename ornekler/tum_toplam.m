function sonuc = tum_toplam(varargin)
sonuc = 0;
for i=1:nargin
    if ( isnumeric(varargin{i}) )
    sonuc = sonuc + varargin{i};
    end
end
end