//
//  main.m
//  randomizer
//
//  Created by Michael Le Fevre on 11/12/20.
//

#import <Foundation/Foundation.h>

NSArray* getItems() {
    
    NSMutableArray *items = [NSMutableArray arrayWithCapacity:1];
    while(true) {
        char item[256];
        
        printf("Name %d: ", [items count] + 1);
        
        scanf("%s", item);
        NSString *itemInString = [NSString stringWithUTF8String:item];
        
        if ([itemInString  isEqual: @"stop"]) {
            return items;
        }
        
        [items addObject:itemInString];
    }
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        printf("Welcome to Michael's Amazing Random Name Picker! Type in the names of everyone in the group, and it will pick one out at random! Type stop when you have entered in all the names.\n");
        NSArray* allTheItems = getItems();
        
        //Iterate over a NSArray
//        for (id item in allTheItems) {
//            printf("%s", [item UTF8String]);
//        }
        
        while(true)
        {
            srand((unsigned)time(NULL));
            int randomNumber = rand() % [allTheItems count];
            printf("\nThe chosen name is: %s!!!\n", [allTheItems[randomNumber] UTF8String]);
            printf("Would you like to pick another name? y/n: ");
            char name[20];
            scanf("%s", name);
           if (name[0] != 'y')
           {
               return 0;
           }
            
        }
        
        
        
    }
    return 0;
}
