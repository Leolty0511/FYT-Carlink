.class public Lo1/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/i;


# direct methods
.method public constructor <init>(Lo1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/i$a;->a:Lo1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    sput v0, Lo1/i;->t:I

    return-void
.end method
