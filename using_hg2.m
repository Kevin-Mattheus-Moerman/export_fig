%USING_HG2 Determine if the HG2 graphics pipeline is used
%
%   tf = using_hg2(fig)
%
%IN:
%   fig - handle to the figure in question.
%
%OUT:
%   tf - boolean indicating whether the HG2 graphics pipeline is being used
%        (true) or not (false).

function tf = using_hg2(fig)
try
    if nargin < 1,  fig = gcf;  end
    tf = ~graphicsversion(fig, 'handlegraphics');
catch
    tf = false;
end
end
