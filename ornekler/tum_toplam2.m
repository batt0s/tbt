function [varargout] = tum_toplam2(varargin)
sonuc = 0;
for i=1:nargin
    if ( isnumeric(varargin{i}) )
    sonuc = sonuc + varargin{i};
    end
end
varargout{1} = sonuc;
for j=1:nargout
    varargout{j} = sonuc^j;
end
end