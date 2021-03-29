function f=act_fuction (type,z,k)
%   act_fuction ��һ����������������:sigmoid ������tanh������Relu������softmax����
%sigmoid����Ϊf(z)=1/(1+exp(-z))
%tanh����Ϊf(z)=(exp(z)-exp(-z))/(exp(z)+exp(-z))
%relu����Ϊf(z)=max(0,z)
%softmax����Ϊf(n)=exp(z(n))/sum(exp(z))�Ǳ�׼д��
%ȷ�Ϻ������ಢ������
switch lower(type)
    case 'sigmoid'%sigmoid����
        f=1./(1+exp(-z));
    case 'tanh'%tanh����
        f=(exp(z)-exp(-z))./(exp(z)+exp(-z));
    case 'relu'%relu����
        f=max(0,z);
    case 'softmax'%softmax����
        f=zeros(1,k);
        for n=1:k
            f(n)=exp(z(n))./sum(exp(z));
        end
end

