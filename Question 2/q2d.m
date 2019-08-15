function z = q2d(u,v)
    z = ((u.*v)./exp(v))-(v.*(v-u)./exp(u./2));
end