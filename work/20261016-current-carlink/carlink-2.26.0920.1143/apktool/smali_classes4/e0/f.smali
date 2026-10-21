.class public final Le0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# instance fields
.field public final synthetic a:I

.field public final b:Lz/l;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le0/g;Lz/l;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le0/f;->a:I

    const-string v0, "transformer"

    .line 1
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le0/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Le0/f;->b:Lz/l;

    return-void
.end method

.method public constructor <init>(Lz/a;Lz/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le0/f;->a:I

    const-string v0, "getNextValue"

    .line 4
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Le0/f;->b:Lz/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Le0/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Le0/e;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Le0/e;-><init>(Le0/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :goto_0
    new-instance v0, Le0/l;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Le0/l;-><init>(Le0/f;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
