function [varargout] = pal2(varargin)
kelime = varargin{1};
varargout{1} = all(kelime == fliplr(kelime));
end