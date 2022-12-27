function [varargout] = fonk3(varargin)
if ( nargin == 1 )
   x = varargin{1};
   sonuc = x;
elseif ( nargin == 2)
    x = varargin{1};
    y = varargin{2};
    sonuc = x+y;
else
    sonuc = 7;
end
varargout{1} = sonuc;
%sonuc = varargin;
end