.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 0

    iget-object p0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object p0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p1

    .line 28
    :catch_0
    move-exception p2

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Cannot instantiate class: "

    .line 32
    .line 33
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p3, "MenuInflater"

    .line 44
    .line 45
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 45
    .line 46
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 47
    .line 48
    invoke-interface {v0, v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    .line 53
    .line 54
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    .line 55
    .line 56
    invoke-interface {v0, v1, v4}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    .line 60
    .line 61
    if-ltz v0, :cond_1

    .line 62
    .line 63
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 85
    .line 86
    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    new-instance v0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    .line 97
    .line 98
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 99
    .line 100
    invoke-static {v1}, Landroid/view/MenuInflater;->access$400(Landroid/view/MenuInflater;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v0, v1, v4}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_5
    :goto_1
    instance-of v0, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 127
    .line 128
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 129
    .line 130
    const/4 v4, 0x2

    .line 131
    if-lt v1, v4, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 134
    .line 135
    .line 136
    :cond_6
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-static {}, Landroid/view/MenuInflater;->access$500()[Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v2, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 145
    .line 146
    invoke-static {v2}, Landroid/view/MenuInflater;->access$600(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-direct {p0, v0, v1, v2}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/view/View;

    .line 155
    .line 156
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    move v2, v3

    .line 160
    :cond_7
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    .line 161
    .line 162
    if-lez v0, :cond_9

    .line 163
    .line 164
    if-nez v2, :cond_8

    .line 165
    .line 166
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_8
    const-string v0, "MenuInflater"

    .line 171
    .line 172
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 173
    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_9
    :goto_2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 178
    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 182
    .line 183
    .line 184
    :cond_a
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 185
    .line 186
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 190
    .line 191
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 192
    .line 193
    .line 194
    return-void
.end method


# virtual methods
.method public addItem()Landroid/view/MenuItem;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 5
    .line 6
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 7
    .line 8
    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 9
    .line 10
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    .line 11
    .line 12
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 5
    .line 6
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 7
    .line 8
    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 9
    .line 10
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    .line 11
    .line 12
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/internal/R$styleable;->MenuGroup:[I

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/internal/R$styleable;->MenuItem:[I

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x6

    .line 29
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 30
    .line 31
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/high16 v3, -0x10000

    .line 36
    .line 37
    and-int/2addr v0, v3

    .line 38
    const v3, 0xffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v2, v3

    .line 42
    or-int/2addr v0, v2

    .line 43
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    .line 44
    .line 45
    const/4 v0, 0x7

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    .line 65
    .line 66
    const/16 v0, 0x16

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v3, -0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v2, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 81
    .line 82
    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 90
    .line 91
    :goto_0
    const/16 v0, 0x15

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 107
    .line 108
    :goto_1
    const/16 v0, 0x9

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput-char v0, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 119
    .line 120
    const/16 v0, 0x13

    .line 121
    .line 122
    const/16 v2, 0x1000

    .line 123
    .line 124
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 129
    .line 130
    const/16 v0, 0xa

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput-char v0, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    .line 141
    .line 142
    const/16 v0, 0x14

    .line 143
    .line 144
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    .line 149
    .line 150
    const/16 v0, 0xb

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_2

    .line 157
    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 166
    .line 167
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 168
    .line 169
    :goto_2
    const/4 v0, 0x3

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    .line 175
    .line 176
    const/4 v0, 0x4

    .line 177
    iget-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 178
    .line 179
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 184
    .line 185
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 186
    .line 187
    const/4 v2, 0x1

    .line 188
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    .line 193
    .line 194
    const/16 v0, 0xe

    .line 195
    .line 196
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    .line 201
    .line 202
    const/16 v0, 0xc

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 209
    .line 210
    const/16 v0, 0xf

    .line 211
    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    .line 217
    .line 218
    const/16 v0, 0x10

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 225
    .line 226
    const/16 v0, 0x11

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v0, :cond_3

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_3
    move v2, v1

    .line 238
    :goto_3
    if-eqz v2, :cond_4

    .line 239
    .line 240
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    .line 241
    .line 242
    if-nez v3, :cond_4

    .line 243
    .line 244
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 245
    .line 246
    if-nez v3, :cond_4

    .line 247
    .line 248
    invoke-static {}, Landroid/view/MenuInflater;->access$200()[Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 253
    .line 254
    invoke-static {v3}, Landroid/view/MenuInflater;->access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-direct {p0, v0, v2, v3}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Landroid/view/ActionProvider;

    .line 263
    .line 264
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_4
    if-eqz v2, :cond_5

    .line 268
    .line 269
    const-string v0, "MenuInflater"

    .line 270
    .line 271
    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 272
    .line 273
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :cond_5
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 277
    .line 278
    :goto_4
    const/16 v0, 0xd

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 285
    .line 286
    const/16 v0, 0x12

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    .line 296
    .line 297
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 298
    .line 299
    return-void
.end method

.method public resetGroup()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 3
    .line 4
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 5
    .line 6
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 7
    .line 8
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 14
    .line 15
    return-void
.end method
