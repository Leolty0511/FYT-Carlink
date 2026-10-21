.class public Lz/k$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/k;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lz/a;->m:Lo1/f0;

    sget-object v1, Lz/a;->c:Lo1/e0;

    sget-object v2, Lz/a;->z:Lo1/q;

    invoke-virtual {v0, v1, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lz/a;->z:Lo1/q;

    return-void
.end method
