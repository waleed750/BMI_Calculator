import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 22.0,
                   backgroundImage: NetworkImage(
                       'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/135160607_747953056119320_150662987735095285_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEhRbs_xPSmqUpzwkGRvvJEBp62Z7VSy68GnrZntVLLr_X4CqY0GqJuG-cR2i4D0nM10gE6hy9dAs9EOY13mxio&_nc_ohc=cPHgLXVe2ikAX8On2eV&tn=Bd_qCm1rSaREDGZW&_nc_ht=scontent.fcai19-4.fna&oh=00_AT9jl7XJHD1B09udlwQMrajEnb2lm_KnHYGd1sapLtnVkQ&oe=62F3BCE8'
                   ),
                ) ,

              ],
            ),
            SizedBox(width: 10.0,) ,
            Text(
              'Chats'
            )
          ],
        ),

        actions: [
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.camera_alt
                ),
              )),

          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
                child: Icon(
                    Icons.edit
                )
          ), onPressed: () {  } ,
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0) ,
                    color: Colors.grey,
                  ),
                  child: Row(
                  children: [
                    Icon(Icons.search) ,
                    SizedBox(width: 10.0,),
                    Text(
                      'Search'
                    ) ,
                  ],
                ),
                padding: const EdgeInsets.all(10.0),

              ) ,
              SizedBox(height: 10.0,) ,

              Container(
                height: 100.0,
                child: ListView.separated
                  (scrollDirection: Axis.horizontal,
                    shrinkWrap: true ,
                    physics: BouncingScrollPhysics() ,
                    itemBuilder: (context , index) => buildStoryItem(),
                    separatorBuilder: (context , index ) => SizedBox(width: 10.0,),
                    itemCount: 6),
              ) ,
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index ) => SizedBox(height: 10.0,)
                , itemCount: 16)
            ],
          ),
        ),
      ),
    );
  }
}
Widget buildChatItem() => Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 22.0,
          backgroundImage: NetworkImage(
              'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/135160607_747953056119320_150662987735095285_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEhRbs_xPSmqUpzwkGRvvJEBp62Z7VSy68GnrZntVLLr_X4CqY0GqJuG-cR2i4D0nM10gE6hy9dAs9EOY13mxio&_nc_ohc=cPHgLXVe2ikAX8On2eV&tn=Bd_qCm1rSaREDGZW&_nc_ht=scontent.fcai19-4.fna&oh=00_AT9jl7XJHD1B09udlwQMrajEnb2lm_KnHYGd1sapLtnVkQ&oe=62F3BCE8'
          ),
        ),
        CircleAvatar(radius: 6.0, backgroundColor: Colors.white,),
        Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 1.0 , end : 1.0),
          child: CircleAvatar(radius: 5.0, backgroundColor: Colors.green,),
        ),
      ],
    ) ,

    SizedBox(width: 15.0,) ,
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Waleed Ashraf'
          ) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'hey there I am using messanger now  ' ,
                  maxLines: 2 ,
                  overflow: TextOverflow.ellipsis,
                ),
              ) ,
              CircleAvatar(radius: 5.0,) ,
              SizedBox(width: 5.0),
              Text(
                  '02:00 pm'
              ) ,
            ],
          )
        ],
      ),
    )
  ],
);

Widget buildStoryItem () => Container(
  width: 50.0,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/135160607_747953056119320_150662987735095285_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEhRbs_xPSmqUpzwkGRvvJEBp62Z7VSy68GnrZntVLLr_X4CqY0GqJuG-cR2i4D0nM10gE6hy9dAs9EOY13mxio&_nc_ohc=cPHgLXVe2ikAX8On2eV&tn=Bd_qCm1rSaREDGZW&_nc_ht=scontent.fcai19-4.fna&oh=00_AT9jl7XJHD1B09udlwQMrajEnb2lm_KnHYGd1sapLtnVkQ&oe=62F3BCE8'
            ),
          ) ,
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0  ,right: 2.0),
            child: CircleAvatar(radius: 5.0,
              backgroundColor: Colors.green,
            ),
          ) ,

        ],
      ),
      Text(
        'Waleed Ashraf Ahmad' ,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,

      ) ,
    ],
  ),
) ;
/*TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: Text('Search'),
                  prefixIcon: Icon(
                    Icons.search
                  ) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ) ,
                ),
              ),*/