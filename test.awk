BEGIN{

pktdrop=0;	
pktdrop_0 =0;
pktdrop_1 =0;
pktreceived=0;

packet_enqued=0;
packet_dequed=0;
}

{
	
event =$1;
src=$9

if (event =="d")
{
	
pktdrop++;

if(src=="0.0")

{
pktdrop_0++ ;
}

else if (src=="1.0")

{
pktdrop_1++ ;
}
}

if (event =="r")

{
	
pktreceived++;	
}

if (event =="+")

{
	
packet_enqued++;	
}

if (event =="-")

{
	
packet_dequed++;	
}

}

END{
	
printf ("The number of packet dropped is %d \n",pktdrop);
printf ("The number of packet dropped from node 0 is %d \n",pktdrop_0);
printf ("The number of packet dropped from node 1 is %d \n",pktdrop_1);
printf ("The number of packet received is %d \n",pktreceived);
printf ("The number of packet enqueued is %d \n",packet_enqued);
printf ("The number of packet dequeued is %d \n",packet_dequed);

}
