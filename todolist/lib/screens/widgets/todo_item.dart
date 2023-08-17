import 'package:flutter/material.dart';
import 'package:todolist/constants/colors.dart';
import '../../model/todo.dart';
import 'package:todolist/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final ontoDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo, required this.ontoDoChanged,required this.onDeleteItem, }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap:(){
         // print('Click on ToDo item');
         ontoDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
                   todo.isDone? Icons.check_box:Icons.check_box_outline_blank,
                    color:tdBlue,
                    ),
        title:  Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color:tdBlack,
            decoration: todo.isDone? TextDecoration.lineThrough:null, 
            ),
            ),
            trailing: Container(
              height: 35,
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 35,
              decoration:BoxDecoration(
                color: tdRed,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white, 
                iconSize: 18,
                icon: Icon(Icons.delete),
                onPressed:(){
                 // print('Click on Delete icon');
                onDeleteItem(todo.id);
                
                },
              ),

            ),            

      ),
      
      
      
      );
  }
}