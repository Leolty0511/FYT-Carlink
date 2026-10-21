.class public Ln0/c4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c4;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$c;->a:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    .line 1
    sget v1, Lu0/b;->o4:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x76

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x77

    :goto_1
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
