.class public Lcom/google/android/projection/sink/embedded/AndroidAutoHeadunitLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static TAG_PREFIX:Ljava/lang/String; = "AHU."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/projection/sink/embedded/AndroidAutoHeadunitLog;->TAG_PREFIX:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1, p0}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
