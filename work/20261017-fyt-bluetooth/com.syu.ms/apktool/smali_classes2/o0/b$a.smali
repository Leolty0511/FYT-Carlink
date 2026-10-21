.class public Lo0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/b;


# direct methods
.method public constructor <init>(Lo0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/b$a;->a:Lo0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/16 v2, 0xc1

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 1
    sget v2, Lu0/b;->o:I

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->o([I)V

    return-void
.end method
