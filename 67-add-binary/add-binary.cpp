class Solution {
public:
    string addBinary(string a, string b) {
        string s="";
        int carry=0;
        int mnsize=min(a.size(),b.size());
        reverse(a.begin(),a.end());
        reverse(b.begin(),b.end());

        for(int i=0;i<mnsize;i++){
            int carryin=0;
            carryin+=(a[i]=='1');
            carryin+=(b[i]=='1');
            carryin+=carry;
            if(carryin%2)s='1'+s;
            else s='0'+s;
            carry=(carryin>=2);
        }
        for(int i=mnsize;i<a.size();i++){
            int carryin=0;
            carryin+=(a[i]=='1');
            carryin+=carry;
            if(carryin%2)s='1'+s;
            else s='0'+s;
            carry=(carryin>=2);
        }
        for(int i=mnsize;i<b.size();i++){
            int carryin=0;
            carryin+=(b[i]=='1');
            carryin+=carry;
            if(carryin%2)s='1'+s;
            else s='0'+s;
            carry=(carryin>=2);
        }
        if(carry)s='1'+s;
        return s;
    }
};