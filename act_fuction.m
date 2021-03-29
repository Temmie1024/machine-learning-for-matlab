function f=act_fuction (type,z,k)
%   act_fuction 是一个激活函数，激活函数有:sigmoid 函数，tanh函数，Relu函数，softmax函数
%sigmoid函数为f(z)=1/(1+exp(-z))
%tanh函数为f(z)=(exp(z)-exp(-z))/(exp(z)+exp(-z))
%relu函数为f(z)=max(0,z)
%softmax函数为f(n)=exp(z(n))/sum(exp(z))非标准写法
%确认函数种类并求解输出
switch lower(type)
    case 'sigmoid'%sigmoid函数
        f=1./(1+exp(-z));
    case 'tanh'%tanh函数
        f=(exp(z)-exp(-z))./(exp(z)+exp(-z));
    case 'relu'%relu函数
        f=max(0,z);
    case 'softmax'%softmax函数
        f=zeros(1,k);
        for n=1:k
            f(n)=exp(z(n))./sum(exp(z));
        end
end

