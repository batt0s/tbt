function [varargout] = pal(varargin)
kelime = varargin{1};
boyut = length(kelime);
yarisi = fix(boyut/2);
varargout{1} = true;
for i=0:yarisi
    if ( kelime(i+1) ~= kelime(boyut-i) )
        varargout{1} = false;
        break;
    end
end




end