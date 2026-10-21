.class public Lk0/fi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fi;


# direct methods
.method public constructor <init>(Lk0/fi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fi$a;->a:Lk0/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fi$a;->a:Lk0/fi;

    iget v1, v0, Lk0/fi;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lk0/fi;->i:I

    const-string v0, "com.syu.fourcamera2"

    .line 2
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.lsec.fourcamera2.show"

    .line 3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/fi$a;->a:Lk0/fi;

    iget v1, v0, Lk0/fi;->i:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 5
    iget-boolean v0, v0, Lk0/fi;->h:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x7d
        0x8
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data
.end method
