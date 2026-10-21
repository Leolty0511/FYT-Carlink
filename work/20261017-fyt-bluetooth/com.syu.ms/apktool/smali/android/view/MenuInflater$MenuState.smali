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

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field public final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 3
    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object p0
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
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

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 2
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v1}, Landroid/view/MenuInflater;->access$400(Landroid/view/MenuInflater;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/android/internal/view/menu/d;

    if-eqz v0, :cond_4

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/d;

    .line 10
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_4

    .line 11
    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/d;->n(Z)V

    .line 12
    :cond_4
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 13
    invoke-static {}, Landroid/view/MenuInflater;->access$500()[Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v2}, Landroid/view/MenuInflater;->access$600(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    .line 15
    :cond_5
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v0, :cond_7

    if-nez v2, :cond_6

    .line 16
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_6
    const-string v0, "MenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_8

    .line 19
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_8
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 2
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Li/a;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    const/4 v2, 0x3

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    const/4 v2, 0x4

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    const/4 v2, 0x5

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->access$100(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Li/a;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 3
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 4
    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 5
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    const/4 v0, 0x7

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    const/16 v0, 0x9

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    const/16 v0, 0xa

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    const/16 v0, 0xb

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    :goto_0
    const/4 v0, 0x3

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    const/4 v0, 0x4

    .line 15
    iget-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 16
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    const/16 v0, 0xd

    const/4 v3, -0x1

    .line 17
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    const/16 v0, 0xc

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    const/16 v0, 0xe

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    const/16 v0, 0xf

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    const/16 v0, 0x10

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 22
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 23
    invoke-static {}, Landroid/view/MenuInflater;->access$200()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v3}, Landroid/view/MenuInflater;->access$300(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionProvider;

    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, "MenuInflater"

    const-string v2, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 26
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 2
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 3
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 4
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 6
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
