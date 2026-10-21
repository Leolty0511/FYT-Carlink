.class Lcom/android/internal/util/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FastPrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/FastPrintWriter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Shouldn\'t be here"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public flush()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method

.method public write([CII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method
