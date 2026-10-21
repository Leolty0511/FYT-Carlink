.class public Lk0/xj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xj;


# direct methods
.method public constructor <init>(Lk0/xj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xj$a;->a:Lk0/xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-static {v0}, Ll0/g0;->i(I)V

    return-void
.end method
