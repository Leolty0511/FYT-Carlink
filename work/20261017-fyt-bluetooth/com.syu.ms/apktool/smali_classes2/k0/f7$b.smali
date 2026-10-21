.class public Lk0/f7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/f7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/f7;


# direct methods
.method public constructor <init>(Lk0/f7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/f7$b;->a:Lk0/f7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->e2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x62

    invoke-static {v0, v2, v1}, Lo1/x;->x([Lo1/x;II)V

    const/4 v0, 0x0

    .line 3
    sput v0, Lu0/b;->e2:I

    :cond_0
    return-void
.end method
