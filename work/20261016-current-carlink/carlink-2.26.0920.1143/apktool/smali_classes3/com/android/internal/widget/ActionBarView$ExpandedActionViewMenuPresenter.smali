.class Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 4
    .line 5
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/view/CollapsibleActionView;

    .line 10
    .line 11
    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1400(Lcom/android/internal/widget/ActionBarView;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    and-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1400(Lcom/android/internal/widget/ActionBarView;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    and-int/lit8 p1, p1, 0x8

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1500(Lcom/android/internal/widget/ActionBarView;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    :cond_6
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1600(Lcom/android/internal/widget/ActionBarView;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x1

    .line 172
    return p1
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 49
    .line 50
    if-eq p1, v0, :cond_0

    .line 51
    .line 52
    iget-object p1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eq p1, v0, :cond_1

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 170
    .line 171
    const/4 v0, 0x0

    .line 172
    invoke-static {p1, v0, v0}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;ZZ)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 178
    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 182
    .line 183
    .line 184
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 185
    .line 186
    iget-object p2, p2, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 187
    .line 188
    instance-of v0, p2, Landroid/view/CollapsibleActionView;

    .line 189
    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    check-cast p2, Landroid/view/CollapsibleActionView;

    .line 193
    .line 194
    invoke-interface {p2}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 195
    .line 196
    .line 197
    :cond_6
    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 13
    .line 14
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method
