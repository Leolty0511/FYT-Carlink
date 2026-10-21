.class public abstract Landroid/widget/SimpleCursorTreeAdapter;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mChildFrom:[I

.field private mChildFromNames:[Ljava/lang/String;

.field private mChildTo:[I

.field private mGroupFrom:[I

.field private mGroupFromNames:[Ljava/lang/String;

.field private mGroupTo:[I

.field private mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[III[Ljava/lang/String;[I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    move-object v1, p5

    move-object v2, p6

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    .line 2
    invoke-direct {p0, p5, p6, v3, v4}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    .line 3
    invoke-direct/range {v0 .. v5}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;III)V

    .line 4
    invoke-direct {p0, p5, p6, p8, p9}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 6
    invoke-direct {p0, p4, p5, p7, p8}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V
    .locals 5

    .line 1
    iget-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_5

    .line 3
    aget v2, p5, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_0

    .line 4
    aget v3, p4, v1

    invoke-interface {p2, v2, p3, v3}, Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-nez v3, :cond_4

    .line 5
    aget v3, p4, v1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    .line 6
    :cond_1
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 7
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_2
    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 9
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SimpleCursorTreeAdapter can bind values only to TextView and ImageView!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private init([Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    .line 2
    iput-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    .line 3
    iput-object p3, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    .line 4
    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    return-void
.end method

.method private initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 7

    .line 1
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    if-nez p4, :cond_0

    .line 2
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    .line 3
    invoke-direct {p0, p3, p4, v0}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 4
    :cond_0
    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    iget-object v6, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 7

    .line 1
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    if-nez p4, :cond_0

    .line 2
    iget-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    .line 3
    invoke-direct {p0, p3, p4, v0}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 4
    :cond_0
    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    iget-object v6, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    return-void
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    return-object v0
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
