.class public abstract Landroid/widget/ResourceCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2
    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 10
    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 12
    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 6
    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const-string p2, "layout_inflater"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    .line 24
    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    return-void
.end method
